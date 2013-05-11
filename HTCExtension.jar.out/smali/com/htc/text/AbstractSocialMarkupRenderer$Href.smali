.class Lcom/htc/text/AbstractSocialMarkupRenderer$Href;
.super Ljava/lang/Object;
.source "AbstractSocialMarkupRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/AbstractSocialMarkupRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Href"
.end annotation


# instance fields
.field public mHref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "href"

    .prologue
    .line 1327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer$Href;->mHref:Ljava/lang/String;

    .line 1329
    return-void
.end method
