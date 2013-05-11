.class Lcom/android/camera/component/ThumbnailUI$8;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->registerListeners()V
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
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$8;->this$0:Lcom/android/camera/component/ThumbnailUI;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$8;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$1202(Lcom/android/camera/component/ThumbnailUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$8;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/camera/component/ThumbnailUI;->access$1300(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    return-void
.end method
