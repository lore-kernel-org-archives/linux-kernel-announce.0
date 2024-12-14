Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722551119A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734203733; cv=none; b=HJLf9Q+DLT8ol/sx7xAftkucuO6Z++Y67rWZFzunskYzA8n8P5TvYwmVnI0ZWbJIcWTK7Pie/1THMnyIYq2QojLQoyDgGxDyKKAwNOYNvtHTa23X5fjJ7lPB6zGpCpn7s+Cy9fq6Um+rCqiE0nhaClmsWYuvwDiQPNUfpaVx2Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734203733; c=relaxed/simple;
	bh=oWjDZTGCISOawtVde3uK/aasOyzheyJX1Jo3x6pGk04=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cTH1aa0Xy2+Fk5mBfcA+mPvuIQ++tccIALVehz6sXy/BDmxDrE1ayzW+/g6uoAKgjpaOEGQTeYqW6XnrIIcin3OnZL1X+75gRzip5zlhoyflvmuLRqqecGrA5t4GoaS8vdMkeprKHpT5+evRKEjqFK62LKXGOMNraXZtTnFAtGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734203733;
	bh=oWjDZTGCISOawtVde3uK/aasOyzheyJX1Jo3x6pGk04=;
	h=Subject:From:To:Date:From;
	b=ungQQd1aYQXftVxm3uYNSjk9YWBEZGwjCrbkWpXvYBh6nWdsxws8BTnDYepUzdKHE
	 w6Ki7NbUwC1eNEzi1Us2Mhbz5TWvDLr10Gwu+Oow447wJGrpPAHrVltOk+4eIUQjht
	 j3MplhUwfyGPO12vwNt8ByNlLSwOcoAzUc7Ch58Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08836C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:15:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B5A7D380A959
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:15:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.120 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 14 Dec 2024 19:15:49 +0000
Message-Id: <20241214191549.release-6.1.120@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.120
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.120.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.120.xz

Linux kernel version 6.1.120 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.120.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.120.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.120.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.120/v6.1.119

