.class Lcom/android/camera/component/ThumbnailUI$4;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->onThumbnailButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;

.field final synthetic val$actionScreen:Lcom/android/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;Lcom/android/camera/actionscreen/ActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iput-object p2, p0, Lcom/android/camera/component/ThumbnailUI$4;->val$actionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->startAlbum()Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$900(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$4;->val$actionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    :cond_0
    return-void
.end method
