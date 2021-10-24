from django.db import models
from django.conf import settings
from django.db.models.deletion import CASCADE
from django.shortcuts import reverse


CATEGORY_CHOICE = (
    ('S', 'Shirt'),
    ('P', 'Pants'),
    ('U', 'Underwear')
)

LABEL_CHOICE = (
    ('S', 'Small'),
    ('M', 'Medium'),
    ('L', 'Large')
)

COLOR_LABEL_CHOICE = (
    ('P', 'primary'),
    ('S', 'secondary'),
    ('D', 'danger')
)



class Item(models.Model):

    title           = models.CharField(max_length=100)
    price           = models.FloatField()
    discount_price  = models.FloatField(null=True, blank=True)
    category        = models.CharField(choices=CATEGORY_CHOICE, max_length=1, default='S')
    label           = models.CharField(choices=LABEL_CHOICE, max_length=1, default='S')
    color_label     = models.CharField(choices=COLOR_LABEL_CHOICE, max_length=1, default='P')
    slug            = models.SlugField(max_length=100, unique=True, null=True)
    description     = models.TextField(null=True)

    def __str__(self):
        return str(self.title)

    def get_absolute_url(self):
        return reverse("core:core_detail", kwargs={
                "slug": self.slug
            })
    
    def get_core_add_to_cart(self):
        return reverse("core:core_add_to_cart", kwargs={
                "slug": self.slug
            })

 

class OrderItem(models.Model):
    title       = models.ForeignKey(Item, on_delete=models.CASCADE)
    quantity    = models.IntegerField(default=1)

    def __str__(self):
        # return str(self.title)
        return f"{self.title} ({self.quantity})"



class Order(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    items = models.ManyToManyField(OrderItem)
    start_date = models.DateTimeField(auto_now_add=True)
    ordered_date = models.DateTimeField()
    ordered = models.BooleanField(default=False)

    def __str__(self):
        return self.user.username
