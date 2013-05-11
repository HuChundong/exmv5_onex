.class public final enum Lcom/htc/text/tag/ITag$Format;
.super Ljava/lang/Enum;
.source "ITag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/tag/ITag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/text/tag/ITag$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/text/tag/ITag$Format;

.field public static final enum AUTO:Lcom/htc/text/tag/ITag$Format;

.field public static final enum DEC:Lcom/htc/text/tag/ITag$Format;

.field public static final enum XML:Lcom/htc/text/tag/ITag$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/htc/text/tag/ITag$Format;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/htc/text/tag/ITag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    new-instance v0, Lcom/htc/text/tag/ITag$Format;

    const-string v1, "XML"

    invoke-direct {v0, v1, v3}, Lcom/htc/text/tag/ITag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/text/tag/ITag$Format;->XML:Lcom/htc/text/tag/ITag$Format;

    new-instance v0, Lcom/htc/text/tag/ITag$Format;

    const-string v1, "DEC"

    invoke-direct {v0, v1, v4}, Lcom/htc/text/tag/ITag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->XML:Lcom/htc/text/tag/ITag$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/text/tag/ITag$Format;->$VALUES:[Lcom/htc/text/tag/ITag$Format;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/text/tag/ITag$Format;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/htc/text/tag/ITag$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/text/tag/ITag$Format;

    return-object v0
.end method

.method public static values()[Lcom/htc/text/tag/ITag$Format;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/text/tag/ITag$Format;->$VALUES:[Lcom/htc/text/tag/ITag$Format;

    invoke-virtual {v0}, [Lcom/htc/text/tag/ITag$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/text/tag/ITag$Format;

    return-object v0
.end method
