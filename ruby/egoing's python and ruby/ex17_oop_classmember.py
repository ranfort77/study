
class C:
    @staticmethod
    def stt_method():
        print('called static_method in C')

    @classmethod
    def cls_method(cls):
        print('called class_method in C')

    def ins_method(self):
        print('called instance_method in C')        


ins = C()
C.stt_method()
C.cls_method()
ins.ins_method()


ins.cls_method()
