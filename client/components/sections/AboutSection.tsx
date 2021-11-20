import Image from "next/image";
import { Container } from "reactstrap";

export default function AboutSection() {
    return (
        <section className="aboutSection">
        <Container>
          <div className="contentWrapper">
            <span>What else?</span>
            <h2>About Bal-Academy</h2>
            <p>
              Bal-Academy is an online dance school and coaching system for
              Balboa dancers of all levels.
            </p>
            <p>
              The system is designed to be very flexible. You will find
              inspiration and learn no matter if you are into figures and
              footwork or broader concepts and want to learn through drills,
              improvisation or more traditional instruction.
            </p>
          </div>
          <div className="imgWrapper">
            <Image
              src="/assets/img/phonePhoto.png"
              width={345}
              height={682}
              alt="telephone"
            />
          </div>
        </Container>
      </section>
    )
}
