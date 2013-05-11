.class Lcom/android/camera/component/CaptureBar$10;
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
        "Lcom/android/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$10;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$10;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->unlock3A()V
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$1100(Lcom/android/camera/component/CaptureBar;)V

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$10;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$10;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$2000(Lcom/android/camera/component/CaptureBar;)Z

    move-result v1

    #calls: Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/CaptureBar;->access$2100(Lcom/android/camera/component/CaptureBar;Z)V

    return-void
.end method
