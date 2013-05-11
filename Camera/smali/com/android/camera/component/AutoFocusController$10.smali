.class Lcom/android/camera/component/AutoFocusController$10;
.super Lcom/android/camera/trigger/Trigger;
.source "AutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$10;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$10;->this$0:Lcom/android/camera/component/AutoFocusController;

    #calls: Lcom/android/camera/component/AutoFocusController;->cancelAllAutoFocus()V
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$200(Lcom/android/camera/component/AutoFocusController;)V

    return-void
.end method
