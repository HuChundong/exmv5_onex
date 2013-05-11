.class Lcom/android/camera/component/ThumbnailUI$12;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/high16 v3, 0x3f80

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1400(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$1400(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/ThumbnailUI;->removeMessages(Lcom/android/camera/component/Component;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$200(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$200(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$202(Lcom/android/camera/component/ThumbnailUI;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$1502(Lcom/android/camera/component/ThumbnailUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1400(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$1400(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;

    move-result-object v1

    const/16 v2, 0x2712

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/ThumbnailUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0
.end method
