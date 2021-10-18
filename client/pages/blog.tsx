import React, {useEffect} from "react";
import LkDashboardGrid from "../hoc/LkDashboardGrid";
import { IBlog } from "../models/IBlog";
import BlogServices from "../services/blog.services";
import {NextPage} from "next";
import BlogEl from "../components/BlogEl"

interface BlogProps {
  blogs: IBlog[];
}

const Blog: NextPage<BlogProps> = ({ blogs }) => {
  useEffect(() => {
    console.log(blogs);
  })
  return <LkDashboardGrid>
    <main className="admin__main">
      {blogs.map((blog, key) => (
        <BlogEl blog={blog} key={key} />
      ))}
    </main>
  </LkDashboardGrid>;
};

export default Blog;

export async function getServerSideProps() {
  const blogs: IBlog[] = await BlogServices.getAll() || [];
  return {
    props: { blogs },
  };
}