import { Container, Row, Col } from "reactstrap";

export default function AndNumbersSection() {
    return (
        <section className="and-numbers">
        <Container>
          <div className="card">
            <span>And five, and six, and five, six, seven, eight</span>
            <button>
              Try for free
              <svg
                width="13"
                height="10"
                viewBox="0 0 13 10"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M10.7373 5.25244L11.297 5.89213L12.0281 5.25244L11.297 4.61275L10.7373 5.25244ZM7.29703 1.11275C6.94374 0.803621 6.40674 0.839421 6.09761 1.19271C5.78848 1.546 5.82428 2.083 6.17758 2.39213L7.29703 1.11275ZM6.17758 8.11275C5.82428 8.42188 5.78848 8.95888 6.09761 9.31217C6.40674 9.66546 6.94374 9.70126 7.29703 9.39213L6.17758 8.11275ZM0.237305 6.10244H10.7373V4.40244H0.237305V6.10244ZM11.297 4.61275L7.29703 1.11275L6.17758 2.39213L10.1776 5.89213L11.297 4.61275ZM10.1776 4.61275L6.17758 8.11275L7.29703 9.39213L11.297 5.89213L10.1776 4.61275Z"
                  fill="#5779F0"
                />
              </svg>
            </button>
          </div>
        </Container>
      </section>
    )
}
