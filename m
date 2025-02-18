Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB9B22DFAF
	for <linux-kernel-announce@vger.kernel.org>; Tue, 18 Feb 2025 08:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739868913; cv=none; b=sBWtCBUyZXltaSNa3x2qo3/FB9R+RsS6qKFnZOu99G6JI/CgNKBRxmNL5mbqTPxCNDKchuJIdwDAuCgNl1FzNb4zfrlx+YNluFqdjhvJvea6glEdESemeTjjD0kF22awjSCO8aVdrMe2nMuUHxtrMiU0mRk4hxZLuYwwqlUL0O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739868913; c=relaxed/simple;
	bh=3pge+4LLPzTZ/brAyAKCNN4tUzMIehrXVu8fjc6ogbw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=G63VGxZ7ZzBtZeJNNBt2+dImHPO/UBVrpn1W0jT2FwSJzSTiVJVUx9Xf1Yaz5MGiJnmXmWrUYQ03yH64nUec6bHNfFkXHJ0rntT7PrygvyzHnjLyEpMjBH4xSDV+XAvfotUlBqznPUPy4OVkfAlRnyOWGRlXdBxrnG0DV2mFOC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739868913;
	bh=3pge+4LLPzTZ/brAyAKCNN4tUzMIehrXVu8fjc6ogbw=;
	h=Subject:From:To:Date:From;
	b=jOeZr7SOie3VBOHHMkKFawYVVXiq10Tzv98TqGBieG+Ic1/iZQTQfW0OeJs2+gV+0
	 HXoro1scA1EFVsPF6CI6+ZVBw9XnhEJqCapn7/duJXV7iZTmlokKAdGQ5KQW5C7eZo
	 3f8Nc9eFbQOQcUDYEKGq3yiUydXyiTW24LMTW97M=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE09DC4CEE2
	for <linux-kernel-announce@vger.kernel.org>; Tue, 18 Feb 2025 08:55:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F2B48380AAD5
	for <linux-kernel-announce@vger.kernel.org>; Tue, 18 Feb 2025 08:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.15 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 18 Feb 2025 08:55:42 +0000
Message-Id: <20250218085542.release-6.12.15@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.15
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.15.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.15.xz

Linux kernel version 6.12.15 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.15.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.15.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.15.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.15/v6.12.14

