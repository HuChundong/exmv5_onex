.class interface abstract Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;
.super Ljava/lang/Object;
.source "IControllerInterface.java"


# static fields
.field public static final GRAYOUT_ALL:I = 0x25c

.field public static final GRAYOUT_HIGH_SPEED_BUTTON:I = 0x25a

.field public static final GRAYOUT_MORE:I = 0x25d

.field public static final GRAYOUT_PLAY_BUTTON:I = 0x259

.field public static final GRAYOUT_SEEKBAR:I = 0x25b

.field public static final ID_BUTTONN_FF:I = 0x321

.field public static final ID_BUTTONN_PLAY:I = 0x320

.field public static final ID_BUTTONN_RR:I = 0x322

.field public static final ID_BUTTONN_SLOW_MOTION:I = 0x323

.field public static final ID_SEEKBAR_DURATION:I = 0x385

.field public static final ID_SEEKBAR_PROGRESS:I = 0x386

.field public static final ID_SEEKBAR_SECONDARY:I = 0x387

.field public static final ID_SLOW_MOTION:I = 0x3e9

.field public static final ID_TEXT_DURATIONTIME:I = 0x324

.field public static final TYPE_FULL:I = 0x25a

.field public static final TYPE_SIMPLE:I = 0x259


# virtual methods
.method public abstract dismissPopWindows()V
.end method

.method public abstract hide()V
.end method

.method public abstract invokeFunction(IZZ)V
.end method

.method public abstract isGrayOut(I)Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setButtonIcon(II)V
.end method

.method public abstract setButtonVisibility(II)V
.end method

.method public abstract setGrayOut(IZ)V
.end method

.method public abstract setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
.end method

.method public abstract setSeekBarParam(II)V
.end method

.method public abstract show()V
.end method

.method public abstract simpleHide()V
.end method
