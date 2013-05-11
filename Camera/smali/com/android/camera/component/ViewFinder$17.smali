.class Lcom/android/camera/component/ViewFinder$17;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->setupUIPropertyChangedCallbacks(Lcom/android/camera/HTCCamera;)V
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
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

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

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

    const/16 v1, 0x2714

    #calls: Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(I)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ViewFinder;->access$1300(Lcom/android/camera/component/ViewFinder;I)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$1700(Lcom/android/camera/component/ViewFinder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/ViewFinder;->m_State:I
    invoke-static {v0, v2}, Lcom/android/camera/component/ViewFinder;->access$1802(Lcom/android/camera/component/ViewFinder;I)I

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$1900(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isActivityPaused false m_PreviewSurfaceView VISIBLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$1400(Lcom/android/camera/component/ViewFinder;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

    const/16 v1, 0x2719

    #calls: Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(I)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ViewFinder;->access$1300(Lcom/android/camera/component/ViewFinder;I)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$17;->this$0:Lcom/android/camera/component/ViewFinder;

    #setter for: Lcom/android/camera/component/ViewFinder;->m_IsReviewImageShown:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/ViewFinder;->access$2002(Lcom/android/camera/component/ViewFinder;Z)Z

    goto :goto_0
.end method
