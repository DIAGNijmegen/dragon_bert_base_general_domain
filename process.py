from dragon_baseline import DragonBaseline


class DragonBaselineBertBaseMultilingual(DragonBaseline):
    def __init__(self, **kwargs):
        """
        Adapt the DRAGON baseline to use the bert-base-multilingual-cased model.
        Note: when manually changing the model, update the Dockerfile to pre-download that model.
        """
        super().__init__(**kwargs)
        self.model_name = "bert-base-multilingual-cased"
        self.per_device_train_batch_size = 4
        self.gradient_accumulation_steps = 2
        self.gradient_checkpointing = False
        self.max_seq_length = 512
        self.learning_rate = 1e-05


if __name__ == "__main__":
    DragonBaselineBertBaseMultilingual().process()
