Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A07C25761
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 09:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708679447; cv=none; b=hdk8kP5s36O9lAcMM6Lcc12jzN/42Y1krt7nkMwJmliNk6cZDTDT3x8ekl8B5gu975LFROuvTftLYGdLXh8LSbtZcs77z8Ys2y1iFE21eNBLciJRSzLCBLwbCOPNVQIlq35VzH5Y3/sDFUAA9crLavuiVceMP2+lVh7e2O0ZHIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708679447; c=relaxed/simple;
	bh=Gf8nWKDWz18AJjEMP3efV9gRzT1eeFH0qydvd/Uoq2U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ek3p236MiQgQrRqeqwD5gYp9Z+0Znv9D336mYwMLzHQSzkqb5QeY4GmHRUi8LhDMXITikFmNshfYHjC1S0eup0DZo/PJvc/L7/Z8PCABi63c3Fqe3tW3MwzIWHwfj1J42KVtfXxNeEmXCvEZmqm8iUsg2Z/3uSfI2RBHDdBLo40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708679447;
	bh=Gf8nWKDWz18AJjEMP3efV9gRzT1eeFH0qydvd/Uoq2U=;
	h=Subject:From:To:Date:From;
	b=Dmswvr1WukDz4gK+nfs45UjLyyo51Dua9OxPdkvZEiqNCrT/v0LukLwFJA+VDaOQP
	 LFPyFO1AUoHFTBpJbcCxiTW669vcVviE1Pq03FnNnWGwzdB72kDE12frtGy+QOm2N0
	 qMc6oitFDXNuB9Rg+VXvpO8n34ZdeRPSu2HEY9sA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDA1C43394
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 09:10:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C6ACBD990CB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 09:10:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Feb 2024 09:10:46 +0000
Message-Id: <20240223091046.release-6.7.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.6.xz

Linux kernel version 6.7.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.6/v6.7.5

