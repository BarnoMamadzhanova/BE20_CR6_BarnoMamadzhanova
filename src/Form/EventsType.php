<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Validator\Constraints\Length;
class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('date', DateTimeType::class, [
                'attr' => ['style' => 'margin-bottom:15px']
            ])
            ->add('description', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('image', FileType::class, [
                'label' => 'Task image',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px'],
                'mapped' => false,
                'required' => true,
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                           'image/png',
                           'image/jpeg',
                           'image/jpg',
                       ],
                       'mimeTypesMessage' => 'Please upload a valid image file',
                    ])
                ],
            ])
            ->add('capacity', IntegerType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom: 15px'],
            ])
            ->add('email', EmailType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom: 15px' ],
            ])
            ->add('phone_number', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom: 15px'],
                'constraints' => [new Length(['max' => 20])],
            ])
            ->add('address', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('website', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('type', ChoiceType::class, [
                'choices' => ['Art' => 'art', 'Dance' => 'dance', 'Fashion' => 'fashion', 
                'Food' => 'food', 'Gaming' => 'gaming', 'Movie' => 'movie', 
                'Music' => 'music', 'Science' => 'science', 'Sport' => 'sport', 'Theater' => 'theater'],
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
