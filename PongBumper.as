﻿package code{	import flash.display.*;	import flash.events.*;	import flash.geom.Point;	import flash.ui.Keyboard;	public class PongBumper extends MovieClip	{		var startX:Number = 300;		var startY:Number = 650;		var center:Point = new Point(0,0);		public function PongBumper()		{			this.x = startX;			this.y = startY;			/*this.addEventListener(MouseEvent.MOUSE_OVER, onOver);			this.addEventListener(MouseEvent.MOUSE_DOWN, onDown);			this.addEventListener(MouseEvent.MOUSE_UP, onUp);*/			this.addEventListener(Event.ENTER_FRAME, onEnter);		}		/*public function onOver(e:MouseEvent)		{		this.buttonMode = true;		}		public function onDown(e:MouseEvent)		{		this.startDrag();		}		public function onUp(e:MouseEvent)		{		this.stopDrag();		}*/		public function onEnter(e:Event)		{			if (this.y != startY)			{				this.y = startY;			}			if (this.x < 0 + .5*(this.width))			{				this.x = .5*(this.width);			}			if (this.x > 600 - .5*(this.width))			{				this.x = 600 - .5*(this.width);			}		}	}}