import tkinter as tk
from tkinter import ttk
import sqlite3

class Main(tk.Frame):
    def __init__(self, root):
        super().__init__(root)
        self.init_main()
        self.db = db
        self.view_records()

    def init_main(self):
        toolbar = tk.Frame(bg='#d7d8e0', bd=2)
        toolbar.pack(side=tk.TOP, fill=tk.X)

        self.add_img = tk.PhotoImage(file='add.gif')
        btn_open_dialog = tk.Button(toolbar, text='Add Entry', command=self.open_dialog, bg='#d7d8e0', bd=0,
                                    compound=tk.TOP, image=self.add_img)
        btn_open_dialog.pack(side=tk.LEFT)

        self.update_img = tk.PhotoImage(file='update.gif')
        btn_edit_dialog = tk.Button(toolbar, text='Edit Entry', bg='#d7d8e0', bd=0, image=self.update_img,
                                    compound=tk.TOP, command=self.open_update_dialog)
        btn_edit_dialog.pack(side=tk.LEFT)

        self.delete_img = tk.PhotoImage(file='delete.gif')
        btn_delete = tk.Button(toolbar, text='Delete Entry', bg='#d7d8e0', bd=0, image=self.delete_img,
                               compound=tk.TOP, command=self.delete_records)
        btn_delete.pack(side=tk.LEFT)

        self.search_img = tk.PhotoImage(file='search.gif')
        btn_search = tk.Button(toolbar, text='Search', bg='#d7d8e0', bd=0, image=self.search_img,
                               compound=tk.TOP, command=self.open_search_dialog)
        btn_search.pack(side=tk.LEFT)

        self.refresh_img = tk.PhotoImage(file='refresh.gif')
        btn_refresh = tk.Button(toolbar, text='Refresh', bg='#d7d8e0', bd=0, image=self.refresh_img,
                                compound=tk.TOP, command=self.view_records)
        btn_refresh.pack(side=tk.LEFT)

        self.tree = ttk.Treeview(self, columns=('ID', 'breed', 'gender', 'age', 'infirm', 'vaccinated'), height=35, show='headings')

        self.tree.column('ID', width=130, anchor=tk.CENTER)
        self.tree.column('breed', width=155, anchor=tk.CENTER)
        self.tree.column('gender', width=100, anchor=tk.CENTER)
        self.tree.column('age', width=100, anchor=tk.CENTER)
        self.tree.column('infirm', width=180, anchor=tk.CENTER)
        self.tree.column('vaccinated', width=100, anchor=tk.CENTER)

        self.tree.heading('ID', text='ID')
        self.tree.heading('breed', text='Порода')
        self.tree.heading('gender', text='Пол')
        self.tree.heading('age', text='Возраст')
        self.tree.heading('infirm', text='Кастрирован/Стерилизована')
        self.tree.heading('vaccinated', text='Привит(а)')

        self.tree.pack(side=tk.LEFT)

        scroll = tk.Scrollbar(self, command=self.tree.yview)
        scroll.pack(side=tk.LEFT, fill=tk.Y)
        self.tree.configure(yscrollcommand=scroll.set)

    def records(self, breed, gender, age, infirm, vaccinated):
        self.db.insert_data(breed, gender, age, infirm, vaccinated)
        self.view_records()

    def update_record(self, breed, gender, age, infirm, vaccinated):
        self.db.c.execute('''UPDATE animals SET breed=?, gender=?, age=?, infirm=?, vaccinated=? WHERE ID=?''',
                          (breed, gender, age, infirm, vaccinated, self.tree.set(self.tree.selection()[0], '#1')))
        self.db.conn.commit()
        self.view_records()

    def view_records(self):
        self.db.c.execute('''SELECT * FROM animals''')
        [self.tree.delete(i) for i in self.tree.get_children()]
        [self.tree.insert('', 'end', values=row) for row in self.db.c.fetchall()]

    def delete_records(self):
        for selection_item in self.tree.selection():
            self.db.c.execute('''DELETE FROM animals WHERE id=?''', (self.tree.set(selection_item, '#1'),))
        self.db.conn.commit()
        self.view_records()

    def search_records(self, breed):
        breed = ('%' + breed + '%',)
        self.db.c.execute('''SELECT * FROM animals WHERE breed LIKE ?''', breed)
        [self.tree.delete(i) for i in self.tree.get_children()]
        [self.tree.insert('', 'end', values=row) for row in self.db.c.fetchall()]

    def open_dialog(self):
        Child()

    def open_update_dialog(self):
        Update()

    def open_search_dialog(self):
        Search()


class Child(tk.Toplevel):
    def __init__(self):
        super().__init__(root)
        self.init_child()
        self.view = app

    def init_child(self):
        self.title('Добавить')
        self.geometry('400x250+400+300')
        self.resizable(False, False)

        label_breed = tk.Label(self, text='Breed:')
        label_breed.place(x=50, y=50)
        label_select = tk.Label(self, text='Gender:')
        label_select.place(x=50, y=80)
        label_sum = tk.Label(self, text='Age:')
        label_sum.place(x=50, y=110)
        label_infirm = tk.Label(self, text='Unfirm:')
        label_infirm.place(x=50, y=140)
        label_vacc = tk.Label(self, text='Vaccinated:')
        label_vacc.place(x=50, y=170)

        self.entry_breed = ttk.Entry(self)
        self.entry_breed.place(x=200, y=50)

        self.entry_money = ttk.Entry(self)
        self.entry_money.place(x=200, y=110)

        self.combobox = ttk.Combobox(self, values=[u'F', u'M'])
        self.combobox.current(0)
        self.combobox.place(x=200, y=80)

        self.combobox1 = ttk.Combobox(self, values=[u'YES', u'NO'])
        self.combobox1.current(0)
        self.combobox1.place(x=200, y=140)

        self.combobox2 = ttk.Combobox(self, values=[u'YES', u'NO'])
        self.combobox2.current(0)
        self.combobox2.place(x=200, y=170)

        btn_cancel = ttk.Button(self, text='CLOSE', command=self.destroy)
        btn_cancel.place(x=300, y=200)

        self.btn_ok = ttk.Button(self, text='ADD')
        self.btn_ok.place(x=220, y=200)
        self.btn_ok.bind('<Button-1>', lambda event: self.view.records(self.entry_breed.get(),
                                                                       self.combobox.get(),
                                                                       self.entry_money.get(),
                                                                       self.combobox1.get(),
                                                                       self.combobox2.get()))

        self.grab_set()
        self.focus_set()



class Update(Child):
    def __init__(self):
        super().__init__()
        self.init_edit()
        self.view = app
        self.db = db
        self.default_data()

    def init_edit(self):
        self.title('Edit entry')
        btn_edit = ttk.Button(self, text='EDIT')
        btn_edit.place(x=300, y=200)
        btn_edit.bind('<Button-1>', lambda event: self.view.update_record(self.entry_breed.get(),
                                                                          self.combobox.get(),
                                                                          self.entry_money.get(),
                                                                          self.combobox1.get(),
                                                                          self.combobox2.get()))

        self.btn_ok.destroy()

    def default_data(self):
        self.db.c.execute('''SELECT * FROM animals WHERE id=?''',
                          (self.view.tree.set(self.view.tree.selection()[0], '#1'),))
        row = self.db.c.fetchone()
        self.entry_breed.insert(0, row[1])
        if row[2] != 'Доход':
            self.combobox.current(1)
        self.entry_money.insert(0, row[3])


class Search(tk.Toplevel):
    def __init__(self):
        super().__init__()
        self.init_search()
        self.view = app

    def init_search(self):
        self.title('Поиск')
        self.geometry('400x300+400+300')
        self.resizable(False, False)

        label_search = tk.Label(self, text='Поиск')
        label_search.place(x=50, y=20)

        self.entry_search = ttk.Entry(self)
        self.entry_search.place(x=105, y=20, width=150)

        btn_cancel = ttk.Button(self, text='Закрыть', command=self.destroy)
        btn_cancel.place(x=185, y=50)

        btn_search = ttk.Button(self, text='Поиск')
        btn_search.place(x=105, y=50)
        btn_search.bind('<Button-1>', lambda event: self.view.search_records(self.entry_search.get()))
        btn_search.bind('<Button-1>', lambda event: self.destroy(), add='+')


class DB:
    def __init__(self):
        self.conn = sqlite3.connect(":memory:")
        self.c = self.conn.cursor()

        sql_file = open("dump.sql")
        sql_as_string = sql_file.read()
        self.c.executescript(sql_as_string)

        self.c.execute(
            '''CREATE TABLE IF NOT EXISTS animals (id integer primary key autoincrement, breed varchar(32), gender text, age integer, infirm text, vaccinated text)''')
        self.conn.commit()

    def insert_data(self, breed, gender, age, infirm, vaccinated):
        self.c.execute('''INSERT INTO animals (breed, gender, age, infirm, vaccinated) VALUES (?, ?, ?, ?, ?)''',
                       (breed, gender, age, infirm, vaccinated))

        f = open('dump.sql', 'w')
        for line in self.conn.iterdump():
            f.write('%s\n' % line)
        f.close()

        self.conn.commit()


if __name__ == "__main__":
    root = tk.Tk()
    db = DB()
    app = Main(root)
    app.pack()
    root.title("Animals")
    root.geometry("1100x600+400+300")
    root.resizable(False, False)
    root.mainloop()