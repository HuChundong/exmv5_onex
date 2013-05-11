.class public final Lcom/android/camera/ResolutionSize;
.super Ljava/lang/Object;
.source "ResolutionSize.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static rsInstance:Lcom/android/camera/ResolutionSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ResolutionSize"

    sput-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    sput-object v1, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v1, "ResolutionSize"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/camera/ResolutionSize;->init()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/ResolutionSize;
    .locals 1

    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/ResolutionSize;

    invoke-direct {v0}, Lcom/android/camera/ResolutionSize;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    :cond_0
    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    return-object v0
.end method

.method private static init()V
    .locals 11

    const v10, 0x222e0

    const v9, 0x1adb0

    const v8, 0x2bf20

    const v7, 0x61a80

    const v6, 0x3d090

    sget-object v4, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_super"

    const-string v1, "_fine"

    const-string v3, "_normal"

    const-string v0, "_basic"

    const v4, 0x7f0a0150

    const v5, 0x1312d0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0150

    const v5, 0x9c400

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0150

    const v5, 0x5f370

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0150

    const v5, 0x30d40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014e

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014e

    const v5, 0x5cc60

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014e

    const v5, 0x35b60

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014e

    invoke-static {v4, v0, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014c

    const v5, 0x3f7a0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014c

    const v5, 0x249f0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014c

    const v5, 0x186a0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014c

    const v5, 0xea60

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014b

    const v5, 0x13c68

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014b

    const v5, 0xcf08

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014b

    const/16 v5, 0x7918

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014b

    const/16 v5, 0x4e20

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0156

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0156

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0156

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0155

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0155

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0155

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0155

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a017a

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a017a

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a017a

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a017a

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0154

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0154

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0154

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0154

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0153

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0153

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0153

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0153

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0152

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0152

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0152

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0152

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015c

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015c

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015c

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015b

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015b

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015b

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015b

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0179

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0179

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0179

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0179

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015a

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015a

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015a

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015a

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0159

    const v5, 0x7a120

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0159

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0159

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0159

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0158

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0158

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0158

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0158

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0157

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0157

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0157

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0157

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016f

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016f

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016f

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016f

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016e

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016e

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016e

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016e

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016c

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016c

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016c

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016c

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016d

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016d

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016d

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016d

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016b

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016b

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016b

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016b

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0170

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0170

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0170

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0170

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015d

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015d

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015d

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015e

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015e

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015e

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015e

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015f

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015f

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015f

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a015f

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0160

    const v5, 0x5cc60

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0160

    const v5, 0x35b60

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0160

    const v5, 0x2e630

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0160

    const v5, 0x1d4c0

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0161

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0161

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0161

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0161

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0162

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0162

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0162

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0162

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0163

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0163

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0163

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0164

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0164

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0164

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0164

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0165

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0165

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0165

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0165

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0166

    const v5, 0x64190

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0166

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0166

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0166

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0167

    const v5, 0x7a120

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0167

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0167

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0167

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0168

    const v5, 0x64190

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0168

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0168

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0168

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0169

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0169

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0169

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0169

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016a

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016a

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016a

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a016a

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013f

    const v5, 0x1e8480

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013f

    const v5, 0x120160

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013f

    const v5, 0xad570

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013e

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013e

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013e

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013e

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0178

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0178

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0178

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0178

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013c

    const v5, 0xcaa30

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013c

    const v5, 0x8b290

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013c

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013c

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0140

    const v5, 0x1e8480

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0140

    const v5, 0x120160

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0140

    const v5, 0xad570

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0141

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0141

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0141

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0141

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0142

    const v5, 0xcaa30

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0142

    const v5, 0x8b290

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0142

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0142

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0143

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0143

    const v5, 0x7c830

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0143

    const v5, 0x5a550

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0143

    const v5, 0x1a1f8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0144

    const v5, 0x64190

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0144

    const v5, 0x45948

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0144

    const v5, 0x2f9b8

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0144

    const v5, 0x157c0

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0145

    invoke-static {v4, v2, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0145

    const v5, 0x445c0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0145

    const v5, 0x2e630

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0145

    const v5, 0x153d8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0147

    const v5, 0x38270

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0147

    const v5, 0x27100

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0147

    invoke-static {v4, v3, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0147

    const v5, 0x11170

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0148

    invoke-static {v4, v2, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0148

    invoke-static {v4, v1, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0148

    const v5, 0x1fbd0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0148

    const v5, 0xbb80

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0146

    const v5, 0x900b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0146

    const v5, 0x64190

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0146

    const v5, 0x53020

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0146

    const v5, 0x14c08

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013b

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013b

    const v5, 0x7c830

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013b

    const v5, 0x5a550

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013b

    const v5, 0x1a1f8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013a

    const v5, 0x900b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013a

    const v5, 0x64190

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013a

    const v5, 0x53020

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a013a

    const v5, 0x14c08

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0138

    invoke-static {v4, v2, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0138

    invoke-static {v4, v1, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0138

    const v5, 0x1fbd0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0138

    const v5, 0xbb80

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0176

    const v5, 0x160c88

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0176

    const v5, 0xeb988

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0176

    const v5, 0x83d60

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a0176

    const v5, 0x4a768

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014a

    const v5, 0xa028

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014a

    const/16 v5, 0x5208

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014a

    const/16 v5, 0x32c8

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a014a

    const/16 v5, 0x2328

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    return-void
.end method

.method private static put(ILjava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSize(ILjava/lang/String;)I
    .locals 4

    sget-object v2, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v3, "getSize"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
