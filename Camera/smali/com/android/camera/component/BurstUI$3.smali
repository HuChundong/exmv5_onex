.class Lcom/android/camera/component/BurstUI$3;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstUI;->registerListeners()V
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
        "Lcom/android/camera/QueryEventArgs",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/MediaInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstUI$3;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/camera/component/BurstUI$3;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/BurstUI;->access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/BurstUI$3;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/BurstUI;->access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v1, Lcom/android/camera/MediaInfo;

    invoke-direct {v1}, Lcom/android/camera/MediaInfo;-><init>()V

    iget-object v2, p0, Lcom/android/camera/component/BurstUI$3;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/BurstUI;->access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    const-string v2, "image/jpeg"

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v0}, Lcom/android/camera/QueryEventArgs;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/QueryEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/BurstUI$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V

    return-void
.end method
