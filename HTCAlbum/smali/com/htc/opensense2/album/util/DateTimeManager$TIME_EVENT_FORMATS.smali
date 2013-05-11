.class final enum Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;
.super Ljava/lang/Enum;
.source "DateTimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/DateTimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TIME_EVENT_FORMATS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum DMY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum DMY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum MDY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum MDY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum MDY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum MY0:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum MY1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum YM:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum YMD:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum YMD_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

.field public static final enum YMD_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "YMD_COMPARATOR1"

    invoke-direct {v0, v1, v3}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "YMD_COMPARATOR2"

    invoke-direct {v0, v1, v4}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "YMD"

    invoke-direct {v0, v1, v5}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "YM"

    invoke-direct {v0, v1, v6}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YM:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    .line 23
    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "MDY_COMPARATOR1"

    invoke-direct {v0, v1, v7}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "MDY_COMPARATOR2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "MDY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "MY0"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MY0:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    .line 24
    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "DMY_COMPARATOR1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "DMY_COMPARATOR2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "DMY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    const-string v1, "MY1"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MY1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YM:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MY0:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MY1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->$VALUES:[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->$VALUES:[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v0}, [Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    return-object v0
.end method
