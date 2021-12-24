import React from 'react';
import MyButton from "./UI/button/MyButton";
import {useHistory} from 'react-router-dom';

const PostItem = (props) => {
    const router = useHistory()

    return (
        <div className="post">
            <div className="post__content">
                <div className="petimage"></div>
                <div className="petdesc">
                    <h1>{props.post.title}</h1>
                    {props.post.body}
                </div>
            </div>
            <div className="post__btns">
                <MyButton>
                    I adopt
                </MyButton>
            </div>
        </div>
    );
};

export default PostItem;
