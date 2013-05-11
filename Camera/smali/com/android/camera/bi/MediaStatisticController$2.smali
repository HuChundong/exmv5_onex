.class Lcom/android/camera/bi/MediaStatisticController$2;
.super Ljava/lang/Object;
.source "MediaStatisticController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/MediaStatisticController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/MediaStatisticController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/bi/MediaStatisticController$2;->this$0:Lcom/android/camera/bi/MediaStatisticController;

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

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController$2;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iput-boolean v2, v0, Lcom/android/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController$2;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController$2;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iput-boolean v2, v0, Lcom/android/camera/bi/MediaStatisticController;->mResetToDefaultCompleted:Z

    goto :goto_0
.end method
