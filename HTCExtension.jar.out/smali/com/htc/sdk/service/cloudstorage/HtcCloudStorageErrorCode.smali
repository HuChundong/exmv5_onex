.class public final enum Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
.super Ljava/lang/Enum;
.source "HtcCloudStorageErrorCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum AccountChanged:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum AccountRemoved:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum DiskFull:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum FileNotFound:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum InternalError:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum MediaUnMounted:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum NoAccountExist:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum NoContext:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum NoNetwork:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum OutOfMemory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum RequestFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum SigninFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum Success:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum TokenNotExist:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field public static final enum UnLink:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;


# instance fields
.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "Success"

    invoke-direct {v0, v1, v4, v4}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->Success:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 18
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "UnLink"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->UnLink:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 21
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "InternalError"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->InternalError:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 24
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "NoAccountExist"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoAccountExist:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 27
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "TokenNotExist"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->TokenNotExist:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 32
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "RequestFailed"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->RequestFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 37
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "SigninFailed"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->SigninFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 40
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "FileNotFound"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->FileNotFound:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 45
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "DiskFull"

    const/16 v2, 0x8

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->DiskFull:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 50
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "MediaUnMounted"

    const/16 v2, 0x9

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->MediaUnMounted:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 55
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "OutOfMemory"

    const/16 v2, 0xa

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->OutOfMemory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 60
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "NoNetwork"

    const/16 v2, 0xb

    const/16 v3, -0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoNetwork:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 65
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "NoContext"

    const/16 v2, 0xc

    const/16 v3, -0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoContext:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 70
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "AccountRemoved"

    const/16 v2, 0xd

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->AccountRemoved:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 75
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    const-string v1, "AccountChanged"

    const/16 v2, 0xe

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->AccountChanged:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 8
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->Success:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->UnLink:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->InternalError:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoAccountExist:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->TokenNotExist:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->RequestFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->SigninFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->FileNotFound:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->DiskFull:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->MediaUnMounted:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->OutOfMemory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoNetwork:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoContext:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->AccountRemoved:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->AccountChanged:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "ord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 238
    iput p3, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->ordinal:I

    .line 239
    return-void
.end method

.method public static lookup(I)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    .locals 1
    .parameter "ord"

    .prologue
    .line 243
    const-class v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0}, [Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    return-object v0
.end method
