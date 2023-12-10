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
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\IsTrue;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin:15px'],
                'constraints' => [
                    new NotBlank([
                        'message' => "You can't leave this field empty"
                    ]),
                    new Length(['min' => 5, 'minMessage' => "This field can't be less then 5 characters"]),
                ]
            ])
            ->add('description', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin:15px'],
                'constraints' => [
                    new NotBlank([
                        'message' => "You can't leave this field empty"
                    ])
                ]
            ])
            ->add('image', FileType::class, [
                'label' => 'Event´s image',
                'attr' => ['class' => 'form-control', 'style' => 'margin:15px'],
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
                'attr' => ['class' => 'form-control', 'style' => 'margin: 15px'],
                'constraints' => [
                    new NotBlank([
                        'message' => "You can't leave this field empty"
                    ])
                ]
            ])
            ->add('email', EmailType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin: 15px' ],
                'constraints' => [
                    new NotBlank([
                        'message' => "You can't leave this field empty"
                    ])
                ]
            ])
            
            ->add('phone_number', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin: 15px'],
                'constraints' => [
                    new NotBlank([
                        'message' => "You can't leave this field empty"
                    ]),
                    new Length(['max' => 20])],
            ])
            ->add('address', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin:15px'],
                'constraints' => [
                    new NotBlank([
                        'message' => "You can't leave this field empty"
                    ])
                ]
            ])
            ->add('website', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin:15px'],
                'constraints' => [
                    new NotBlank([
                        'message' => "You can't leave this field empty"
                    ])
                ]
            ])
            ->add('type', ChoiceType::class, [
                'choices' => ['Art' => 'art', 'Dance' => 'dance', 'Fashion' => 'fashion', 
                'Food' => 'food', 'Gaming' => 'gaming', 'Movie' => 'movie', 
                'Music' => 'music', 'Science' => 'science', 'Sport' => 'sport', 'Theater' => 'theater'],
                'attr' => ['class' => 'form-control', 'style' => 'margin:15px']
            ])
            ->add('date', DateTimeType::class, [
                'attr' => ['style' => 'margin:15px', 'class' => 'formData']
            ])
            ->add('agreeTerms', CheckboxType::class, [
                'mapped' => false,
                'constraints' => [
                    new IsTrue([
                        'message' => 'You should agree to our terms.',
                    ]),
                ],
                'attr' => ['style' => 'margin:15px']
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
