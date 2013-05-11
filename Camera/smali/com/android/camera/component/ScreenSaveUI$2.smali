.class Lcom/android/camera/component/ScreenSaveUI$2;
.super Ljava/lang/Object;
.source "ScreenSaveUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ScreenSaveUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ScreenSaveUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ScreenSaveUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ScreenSaveUI$2;->this$0:Lcom/android/camera/component/ScreenSaveUI;

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
            "<[F>;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<[F>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/component/ScreenSaveUI$2;->this$0:Lcom/android/camera/component/ScreenSaveUI;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    #calls: Lcom/android/camera/component/ScreenSaveUI;->onAccelerometerValuesChanged([F)V
    invoke-static {v1, v0}, Lcom/android/camera/component/ScreenSaveUI;->access$000(Lcom/android/camera/component/ScreenSaveUI;[F)V

    return-void
.end method
