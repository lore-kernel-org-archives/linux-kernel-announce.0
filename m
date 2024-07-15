Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946AE2B9B9
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 07:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721029245; cv=none; b=Tj/64KRrftxE75kJjvIIlv3zhDhGHERHo5kF+dfuIhb5ucbI92JmGmb5z2algK0kJBn1EP/B2M0yBFosXq9TAN2tIWUwi1BF3A/OgEHJcyvdiIoNdFp7JJg1FBuy77zIY6xuThpbA/qnMozMVtUM0fuU7rRfEyxZaEzF4srsUsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721029245; c=relaxed/simple;
	bh=yBEQBOXUarYCyCd1xx6E/pxhZ+AoGzdytHDL1+/FXac=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lsPEYfFZaUFg9/bw7v8jIPCkTbqljAvHH9JUJo3gyuqRXkEfJwQRPUESLQY+plXhhp0K2xLN1ZBmbBxsUIZNFIDUrlgV5RTb5fubdVGX1qgpqyQUleRTuEG8dJb4ihsiGQvJcmfKOIvfUubc52RHVnfHfvPq9tXAU5Uh5f7t81Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721029245;
	bh=yBEQBOXUarYCyCd1xx6E/pxhZ+AoGzdytHDL1+/FXac=;
	h=Subject:From:To:Date:From;
	b=EA0OQP20zmVZRv9i0gCFy5kJXHcsAQ2N37JEWeMM7NBFNCyBbV0uOUK79v9+j+5ZI
	 l+ZbYjyo96qFnCi/mTcAtXu1eSEUHCs72mliWU3zjWNsPqXCSVTPsljj3h5Q5pNqhN
	 MyFbRABLe/FnSHirowuZKeMIl9uIw6cSFXPnDwsY=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22E2DC32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 07:40:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 12A10C43445
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 07:40:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.99 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 15 Jul 2024 07:40:45 +0000
Message-Id: <20240715074045.release-6.1.99@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.99
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.99.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.99.xz

Linux kernel version 6.1.99 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.99.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.99.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.99.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.99/v6.1.98

