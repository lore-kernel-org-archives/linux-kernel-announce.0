Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793990776;
	b=h+Edd/j5n7/SJ0iBFKrTNg5cBPqodIEXjLOY8p4hVlbv+gFNa356samJ58VO5sQjDjXw
	 w6LRn7vItGcb9bvlZzvTKhyWWRxohI+jevwJ5TArVikBDhq6Ec6wI26ASO0+UDTMrLLXC
	 M/ZdcOAwMHc49P2bx+Bstrr0hN9UEpACNVrMKYsZTGsktT5Cs4xD4lwF31c8+MS3f7M5h
	 E5EKB6KMuuN9f+ABGlgfXqqcqavJ1XP5PdQHXlEU68Ns0NPKf8E/Zv7gh5q/qBi7zxcGz
	 f/49cNdzIz2iCyRpVb7myCvXu3M93PreS6c8qeoKqN7TbHSSs7am2dGb2cYQxrvUF3g==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793990776;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=uDu3ErbpIuepzUSrh7EV+P5sozdFHnQFCA9QiEvIA5o=;
	b=IxIm8Pe//nwQRsxlsT79ya36LBhwe5sa7udvY6c2jQDJYL7Yw5g7aS3rrjuL8NSJD9qc
	 ji25vB1MpgaTz7rQE9EVnwySJQC/J39+CXIJuS/G+cVYtAjxL112W1NU4OpNWCQQ4IlJI
	 75o+3cszK+kXSJDHzH5N4ObjAtnydhEjTiABNVCKoY+XmAw5MZ1g0h1yjSobn5jX5IisC
	 2IhOoNHrIh4wma3yc41Lfg9M0IjXa0JjdAaTPhn8N8uCc2TrwdK4KsY0ePm/qK03jwkwr
	 J1zIDvodzWhQxWrQ+Akx9eFVRzuefHUv8AtL4/0OrWkc3LFLyMTuMiEY3S0OXkO81qA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14036606A32C
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793990776;
	bh=uDu3ErbpIuepzUSrh7EV+P5sozdFHnQFCA9QiEvIA5o=;
	h=Subject:From:To:Date;
	b=Qxz8LO1GFI/3K/JKJK+xDaxfCz9dUi9CesYsTFI+kGD3TuoKCC9kqIpc6dW8813Yq
	 FFjgqZ6CsV1V10Jy1AAdMiQ3giyXPQecW4ywg5m+JlwdOFmZa3UF0EJRA90B/qtWs+
	 HMURHYGWOsyZQBIpMGd0+rM/9u7yGiODGI3SNCMeTlnNAZrCrNhkHXF+BXKU2qCJUI
	 azDWc20gy+nXJC1a+M+QGBj33f8OVxnmLp/f8H5R85HO5CsZp0eXfe5Nc6xSUGvlYG
	 Ht8Wk6XVdC+x18Nzvw48ngmmeGlDDuZJujh4PBmKAQS+dVFnwl77yyGh7gBlHzLwqo
	 Eiv17Mhf6rBQA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C24201F008A3
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9DD023A41018
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:15 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.116 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 18:46:14 +0000
Message-Id: <20261106184614.release-6.12.116@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.116
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.116.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.116.xz

Linux kernel version 6.12.116 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.116.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.116.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.116.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.116/v6.12.115

