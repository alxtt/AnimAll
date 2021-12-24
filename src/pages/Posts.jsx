import React from 'react';
import SearchBar from "../components/SearchBar";
import MyButton from "../components/UI/button/MyButton";
import MyModal from "../components/UI/MyModal/MyModal";
import PostForm from "../components/PostForm";
import PostFilter from "../components/PostFilter";
import PostList from "../components/PostList";
import Loader from "../components/UI/Loader/Loader";
import Pagination from "../components/UI/pagination/Pagination";



function Posts() {

    return (
        <div className="main">
            <h1 className="header">Make your first search</h1>
            <h2 className="subheader">Thousands of animals are just waiting for you.</h2>
            <SearchBar></SearchBar>
        </div>
    );
}

export default Posts;
