.class public final enum Lcom/android/camera/component/CameraCompoment$DependencyThreadType;
.super Ljava/lang/Enum;
.source "CameraCompoment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/CameraCompoment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DependencyThreadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/component/CameraCompoment$DependencyThreadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

.field public static final enum CameraThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

.field public static final enum Other:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

.field public static final enum UIThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    const-string v1, "UIThread"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->UIThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    new-instance v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    const-string v1, "CameraThread"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->CameraThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    new-instance v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    const-string v1, "Other"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->Other:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->UIThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->CameraThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->Other:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->$VALUES:[Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/component/CameraCompoment$DependencyThreadType;
    .locals 1

    const-class v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/component/CameraCompoment$DependencyThreadType;
    .locals 1

    sget-object v0, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->$VALUES:[Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    invoke-virtual {v0}, [Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    return-object v0
.end method
