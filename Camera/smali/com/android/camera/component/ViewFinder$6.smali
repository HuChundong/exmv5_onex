.class Lcom/android/camera/component/ViewFinder$6;
.super Lcom/android/camera/trigger/Trigger;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->setupCameraThreadEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$6;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$6;->this$0:Lcom/android/camera/component/ViewFinder;

    #calls: Lcom/android/camera/component/ViewFinder;->clearPostViewBitmap()V
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$600(Lcom/android/camera/component/ViewFinder;)V

    return-void
.end method
