.class public final Lcom/htc/opensense/R$SocialNetwork$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/R$SocialNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final htc_list_item_social_network:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Lcom/htc/opensense/R$SocialNetwork$layout;->get_htc_list_item_social_network()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$SocialNetwork$layout;->htc_list_item_social_network:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final get_htc_list_item_social_network()I
    .locals 1

    .prologue
    .line 468
    const v0, 0x22e0f

    return v0
.end method
