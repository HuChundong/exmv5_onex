.class Lcom/android/camera/HTCCamera$23$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera$23;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/HTCCamera$23;

.field final synthetic val$e:Lcom/android/camera/property/PropertyChangedEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera$23;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$23$1;->this$1:Lcom/android/camera/HTCCamera$23;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$23$1;->val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera$23$1;->this$1:Lcom/android/camera/HTCCamera$23;

    iget-object v1, v0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/HTCCamera$23$1;->val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

    iget-object v0, v0, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingLimitState;

    #calls: Lcom/android/camera/HTCCamera;->onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V
    invoke-static {v1, v0}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;Lcom/android/camera/RecordingLimitState;)V

    return-void
.end method
