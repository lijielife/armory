package armory.logicnode;

class FloatNode extends Node {

	public var value:Float;

	public function new(trait:armory.Trait, value = 0.0) {
		super(trait);
		this.value = value;
	}

	override function get(from:Int):Dynamic {
		if (inputs.length > 0) return inputs[0].get();
		return value;
	}

	override function set(value:Dynamic) {
		if (inputs.length > 0) inputs[0].set(value);
		else this.value = value;
	}
}
