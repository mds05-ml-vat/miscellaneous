if id in seen and label_id not in seen[id]:
  print('same object id but different label found')
  # creating new mapping id
  mapping[(id, label_id)] = counter
  seen[id].append(label_id)
  counter += 1
elif id not in seen:
  seen[id] = []
  seen[id].append(label_id)
  mapping[(id, label_id)] = id
else:
  # do nothing id id in seen and label_id is catered for already
  print(id, label_id)
  print('seen before')

print('mapping', mapping)
  
mapped_object_id = mapping[(id, label_id)]
if mapped_object_id in cluster:
  cluster[mapped_object_id].append(line)
else:
  cluster[mapped_object_id] = [line]