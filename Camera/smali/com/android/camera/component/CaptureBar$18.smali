.class Lcom/android/camera/component/CaptureBar$18;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$18;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Duration;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/Duration;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/component/CaptureBar$21;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$18;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$18;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/Duration;

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    #calls: Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V
    invoke-static {v2, v1, v0}, Lcom/android/camera/component/CaptureBar;->access$3400(Lcom/android/camera/component/CaptureBar;ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
