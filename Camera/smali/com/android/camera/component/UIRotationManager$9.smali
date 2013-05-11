.class Lcom/android/camera/component/UIRotationManager$9;
.super Lcom/android/camera/trigger/Trigger;
.source "UIRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/UIRotationManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$9;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$9;->this$0:Lcom/android/camera/component/UIRotationManager;

    #calls: Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V
    invoke-static {v0}, Lcom/android/camera/component/UIRotationManager;->access$900(Lcom/android/camera/component/UIRotationManager;)V

    return-void
.end method
