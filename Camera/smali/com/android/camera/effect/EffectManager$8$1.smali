.class Lcom/android/camera/effect/EffectManager$8$1;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager$8;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CaptureEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/effect/EffectManager$8;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$8$1;->this$1:Lcom/android/camera/effect/EffectManager$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$8$1;->this$1:Lcom/android/camera/effect/EffectManager$8;

    iget-object v0, v0, Lcom/android/camera/effect/EffectManager$8;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture failed due to driver failure"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$8$1;->this$1:Lcom/android/camera/effect/EffectManager$8;

    iget-object v0, v0, Lcom/android/camera/effect/EffectManager$8;->this$0:Lcom/android/camera/effect/EffectManager;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectManager;->access$002(Lcom/android/camera/effect/EffectManager;Z)Z

    return-void
.end method
