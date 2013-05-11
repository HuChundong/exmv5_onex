.class Lcom/android/camera/effect/EffectControlUI$12;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V
    invoke-static {v0, p2}, Lcom/android/camera/effect/EffectControlUI;->access$1200(Lcom/android/camera/effect/EffectControlUI;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v0, v0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarTrackingStartedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v0, v0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarTrackingStoppedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method
