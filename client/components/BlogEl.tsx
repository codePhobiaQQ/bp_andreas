import { IBlog } from "../models/IBlog";
import {back_url} from "../vars";
import {useEffect} from "react";
import Link from "next/link";

interface BlogElI {
  blog: IBlog;
}

const BlogEl = ({ blog }: BlogElI) => {
  console.log(blog.date)
  return (
    <Link href={`/blog/${blog.id}`}>
      <a>
        <div className="blogWrapper">
          <img src={`${back_url}${blog.image[0].url}`} alt="image"/>
          <div className="content">
            <h3>{blog.title}</h3>
            <p>{blog.text}</p>
            <div className="date">
              {blog.date}
            </div>
          </div>
        </div>
      </a>
    </Link>
  );
};

export default BlogEl;