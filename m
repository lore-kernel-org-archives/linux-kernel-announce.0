Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0635213C3F2
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752156921; cv=none; b=odhQFgl9ahdzn0iqBY1fuw/Brw0xVKqkNxof2KPCMVytm8v7RrD+QGvM1azzRS/q4GyMyeymtGRh5py5d4UZS+EVzz3YbUrkrYRBK5xzTrPM5nVB0N6LkG0FCcrq6N8EYlDYH/cMNaD4XVm8/yh8/sNhEz5EJrj1UQSKt/R49tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752156921; c=relaxed/simple;
	bh=wAuHJd3Hy5J63mNjL+be/7JkGuKW4++0wmnaqdsZ6yQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=p7M1hE/QPErUQ+RkT5iop20MrGDvJe3N5AlJ2PFWT4QgGcJHFmTxuSwCXf/A6IYN3gdLikZrfYUsUbEEWcI5HVyF6cXQnWoURSKV2uj8SK0UEIAwyyZkCp8iMLlsb/MaEBX1jVCrLeWmUBai1UarrfEKzsNp0ZbAaYYO+ifWDgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752156921;
	bh=wAuHJd3Hy5J63mNjL+be/7JkGuKW4++0wmnaqdsZ6yQ=;
	h=Subject:From:To:Date:From;
	b=J+KNcHhUA3x3w3omEuQ7enMmk6qCM+f0LoYfbqJrSbb/dgutiRiRIZVFbxolwwmEm
	 ixSkuCuYHZQL75PeOuSDtgRhR4PAR7UraTyd7Wnoi6P933KeapUA1VfVa/irLxuBzt
	 lHkP1WU6h4g37hdPk1Q2cysPNMC/Yfe/DywhLDcg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C1A0C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:15:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEE5A383B261
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:15:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.144 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Jul 2025 14:15:42 +0000
Message-Id: <20250710141542.release-6.1.144@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.144
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.144.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.144.xz

Linux kernel version 6.1.144 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.144.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.144.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.144.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.144/v6.1.143

