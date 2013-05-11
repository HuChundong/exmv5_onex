.class Lcom/android/camera/effect/EffectManager$2;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
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
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/content/Intent;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/effect/EffectManager;->reset(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectManager;->access$100(Lcom/android/camera/effect/EffectManager;Z)V

    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectManager$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
