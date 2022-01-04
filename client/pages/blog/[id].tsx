import LkDashboardGrid from "../../hoc/LkDashboardGrid";
import React from "react";
import {IBlog} from "../../models/IBlog";
import BlogServices from "../../services/blog.services";
import {GetServerSideProps} from "next";
import {back_url} from "../../vars";

interface BlogPageInterface {
  blog: IBlog;
}

const BlogPage = ({ blog }: BlogPageInterface) => {
  console.log(blog.mainText);
  return (
    <LkDashboardGrid>
      <main className={"admin__main blogPage"}>
        <div className="descriptionWrapper">
          {blog.image ? <img src={`${back_url}${blog.image[0].url}`} alt="blog"/> : null}
          <div className="info">
            <span className={"title"}>{blog.title}</span>
            <span className={"author"}>{blog.title}</span>
          </div>
        </div>
        <div className="content">
          {blog.mainText}
        </div>
      </main>
    </LkDashboardGrid>
  );
};

export default BlogPage;

export const getServerSideProps: GetServerSideProps = async (
  context
): Promise<any> => {
  const blog: IBlog = await BlogServices.getOne(Number(context.params?.id));
  return {
    props: { blog },
  };
};