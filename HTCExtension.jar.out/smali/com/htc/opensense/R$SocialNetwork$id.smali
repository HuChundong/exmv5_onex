.class public final Lcom/htc/opensense/R$SocialNetwork$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/R$SocialNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final avatar:I

.field public static final content:I

.field public static final message_container:I

.field public static final subcontent:I

.field public static final subcontent_ext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/htc/opensense/R$SocialNetwork$id;->get_avatar()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$SocialNetwork$id;->avatar:I

    .line 438
    invoke-static {}, Lcom/htc/opensense/R$SocialNetwork$id;->get_content()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$SocialNetwork$id;->content:I

    .line 439
    invoke-static {}, Lcom/htc/opensense/R$SocialNetwork$id;->get_message_container()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$SocialNetwork$id;->message_container:I

    .line 440
    invoke-static {}, Lcom/htc/opensense/R$SocialNetwork$id;->get_subcontent()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$SocialNetwork$id;->subcontent:I

    .line 441
    invoke-static {}, Lcom/htc/opensense/R$SocialNetwork$id;->get_subcontent_ext()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$SocialNetwork$id;->subcontent_ext:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final get_avatar()I
    .locals 1

    .prologue
    .line 444
    const v0, 0x22e0a

    return v0
.end method

.method private static final get_content()I
    .locals 1

    .prologue
    .line 448
    const v0, 0x22e0b

    return v0
.end method

.method private static final get_message_container()I
    .locals 1

    .prologue
    .line 452
    const v0, 0x22e0c

    return v0
.end method

.method private static final get_subcontent()I
    .locals 1

    .prologue
    .line 456
    const v0, 0x22e0d

    return v0
.end method

.method private static final get_subcontent_ext()I
    .locals 1

    .prologue
    .line 460
    const v0, 0x22e0e

    return v0
.end method
