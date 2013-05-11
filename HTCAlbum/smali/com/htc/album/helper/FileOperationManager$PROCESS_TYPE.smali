.class public final enum Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
.super Ljava/lang/Enum;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROCESS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field public static final enum TYPE_COPY:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field public static final enum TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field public static final enum TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field public static final enum TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field public static final enum TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    const-string v1, "TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    new-instance v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    const-string v1, "TYPE_MOVE"

    invoke-direct {v0, v1, v3}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    new-instance v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    const-string v1, "TYPE_COPY"

    invoke-direct {v0, v1, v4}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_COPY:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    new-instance v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    const-string v1, "TYPE_RENAME_FOLDER"

    invoke-direct {v0, v1, v5}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    new-instance v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    const-string v1, "TYPE_DELETE_FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_COPY:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->$VALUES:[Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->$VALUES:[Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v0}, [Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    return-object v0
.end method
