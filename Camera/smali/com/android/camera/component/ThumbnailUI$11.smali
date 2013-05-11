.class Lcom/android/camera/component/ThumbnailUI$11;
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

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$11;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$11;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$1202(Lcom/android/camera/component/ThumbnailUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$11;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/camera/component/ThumbnailUI;->access$1300(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$11;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$11;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/camera/component/ThumbnailUI;->access$1300(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    goto :goto_0
.end method
