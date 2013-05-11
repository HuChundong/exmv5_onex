.class Lcom/android/camera/component/CameraModeScreen$2;
.super Ljava/lang/Object;
.source "CameraModeScreen.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CameraModeScreen;-><init>(Lcom/android/camera/HTCCamera;)V
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
.field final synthetic this$0:Lcom/android/camera/component/CameraModeScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CameraModeScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CameraModeScreen$2;->this$0:Lcom/android/camera/component/CameraModeScreen;

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

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/CameraModeScreen$2;->this$0:Lcom/android/camera/component/CameraModeScreen;

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen$2;->this$0:Lcom/android/camera/component/CameraModeScreen;

    #getter for: Lcom/android/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CameraModeScreen;->access$100(Lcom/android/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3}, Lcom/android/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    iget-object v1, p0, Lcom/android/camera/component/CameraModeScreen$2;->this$0:Lcom/android/camera/component/CameraModeScreen;

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen$2;->this$0:Lcom/android/camera/component/CameraModeScreen;

    #getter for: Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CameraModeScreen;->access$200(Lcom/android/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method
