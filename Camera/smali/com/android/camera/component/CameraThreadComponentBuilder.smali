.class public abstract Lcom/android/camera/component/CameraThreadComponentBuilder;
.super Lcom/android/camera/component/CameraComponentBuilder;
.source "CameraThreadComponentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/android/camera/component/Component;",
        ">",
        "Lcom/android/camera/component/CameraComponentBuilder",
        "<TTComponent;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public abstract createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraThread;",
            ")TTComponent;"
        }
    .end annotation
.end method

.method public final varargs createComponent([Ljava/lang/Object;)Lcom/android/camera/component/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TTComponent;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    aget-object v0, p1, v1

    check-cast v0, Lcom/android/camera/CameraThread;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method
