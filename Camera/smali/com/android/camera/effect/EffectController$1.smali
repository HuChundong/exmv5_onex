.class Lcom/android/camera/effect/EffectController$1;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectController;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectController$1;->this$0:Lcom/android/camera/effect/EffectController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/EffectController$1;->this$0:Lcom/android/camera/effect/EffectController;

    const-string v1, "none"

    #setter for: Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectController;->access$002(Lcom/android/camera/effect/EffectController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/effect/EffectController$1;->this$0:Lcom/android/camera/effect/EffectController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectController;->access$102(Lcom/android/camera/effect/EffectController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/effect/EffectController$1;->this$0:Lcom/android/camera/effect/EffectController;

    #getter for: Lcom/android/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/android/camera/effect/EffectController;->access$200(Lcom/android/camera/effect/EffectController;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method
