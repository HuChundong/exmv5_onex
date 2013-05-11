.class final Lcom/android/camera/component/ToastManager$ToastHandle;
.super Lcom/android/camera/SessionHandle;
.source "ToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ToastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToastHandle"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Toast"

    invoke-direct {p0, v0}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    return-void
.end method
