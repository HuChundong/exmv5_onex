.class Lcom/android/camera/effect/AutoScene$2;
.super Ljava/lang/Object;
.source "AutoScene.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/AutoScene;-><init>(Lcom/android/camera/HTCCamera;)V
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
.field final synthetic this$0:Lcom/android/camera/effect/AutoScene;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/AutoScene;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/AutoScene$2;->this$0:Lcom/android/camera/effect/AutoScene;

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
            "Lcom/android/camera/CameraType;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$2;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v0}, Lcom/android/camera/effect/AutoScene;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$2;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->canEnableFaceBeautifier()Z
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$000(Lcom/android/camera/effect/AutoScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$2;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->enableFaceBeautifier()V
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$100(Lcom/android/camera/effect/AutoScene;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$2;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->disableFaceBeautifier()V
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$200(Lcom/android/camera/effect/AutoScene;)V

    goto :goto_0
.end method
