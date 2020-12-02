package hello.core.member;

public class MemberServiceImpl implements MemberService {

    private final MemberRepository memberRepository = new MemoryMemberRepository();      //다형성

    @Override
    public void join(Member member) {
        memberRepository.save(member);      //다형성에서 조상클래스타입의 참조변수  memberRepository가 자손클래스의 인스턴스를 참조가능
    }

    @Override
    public Member findMember(Long memberId) {
        return memberRepository.findById(memberId);
    }
}
