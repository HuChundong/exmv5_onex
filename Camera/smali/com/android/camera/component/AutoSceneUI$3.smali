.class Lcom/android/camera/component/AutoSceneUI$3;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$3;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$3;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$3;->this$0:Lcom/android/camera/component/AutoSceneUI;

    const/16 v2, 0x2712

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const/4 v8, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/AutoSceneUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    return-void
.end method
