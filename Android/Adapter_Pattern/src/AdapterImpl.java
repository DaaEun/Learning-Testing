
public class AdapterImpl implements Adapter{

	@Override
	public Float twiceOf(Float f) {
		//return (float)Math.twoTime(f.doubleValue());
		return Math.doubled(f.doubleValue()).floatValue();
	}

	@Override
	public Float halfOf(Float f) {
		System.out.println("half 로그 기능 추가. ");
		return (float)Math.half(f.doubleValue());

	}

}
