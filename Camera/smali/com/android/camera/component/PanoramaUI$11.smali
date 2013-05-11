.class Lcom/android/camera/component/PanoramaUI$11;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaUI;->setupPropertyChangedCallbacks()V
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
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$11;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$11;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->hideReviewScreen()V
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$1500(Lcom/android/camera/component/PanoramaUI;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$11;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$1800(Lcom/android/camera/component/PanoramaUI;)V

    return-void
.end method
