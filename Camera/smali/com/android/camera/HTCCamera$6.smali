.class Lcom/android/camera/HTCCamera$6;
.super Lcom/android/camera/property/Property;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/property/Property",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Ljava/lang/String;ILjava/lang/Object;[F)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-[F>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1404(Lcom/android/camera/HTCCamera;)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->startAccelerometer()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)V

    :cond_0
    return-void
.end method

.method public removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-[F>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1406(Lcom/android/camera/HTCCamera;)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopAccelerometer()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
