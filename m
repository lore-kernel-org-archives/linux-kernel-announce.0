Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4BF1607A4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771516229; cv=none; b=UdmQGt96U4ImrQXWqrDUapXEMXkUqKJAE5TfzT92Vomjm+Cr0MhvAEq+5HL5DwuyV21RwtTmEmg66heBauXWrihpOOtoc0ioTEQgLUFgMrloI0pBU9bSbFmr881LjMpZ7QD8RoiMdXg1VrWtBu+sVAjKnbNaAwae+DYIP3ALmgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771516229; c=relaxed/simple;
	bh=cIuBcOTkFQhuUlpBrWlX+Km11g4PInakQqJfEAIZDP0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CmPiyAGJx0KAWwGyutp33p1bK+GVqp7ccqAwSlIaI/BvolMNMX8AGTDX4vWITfGv2VRW0ighuxe9p1Zhx3QX9mGJz6gW9G5ZbLJLq8W5J0u9j9FRfsXLNUm6XHMbDPAgFNMAKHaBKblvSfNl213n1FB58TPP/9aR7xhG+TSMAvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771516229;
	bh=cIuBcOTkFQhuUlpBrWlX+Km11g4PInakQqJfEAIZDP0=;
	h=Subject:From:To:Date:From;
	b=CGQIcBEMMVLrwp9J5dxnyl6e/rpaPW0pa+3OQ3xFx+aOGqI9Ep8DJPjPVQafQPOSi
	 krBIk/Dpv0ELt7oUWh1MOIVv7S4Bsot56T2qeHSUkbnwG+oqnUkwp36kJXJzkLvIdM
	 B1WEAeufiPgyMsFpFGwoeGvz3sMV3AKTQ13qizlU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC3BAC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:50:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0D91E380CEF3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:50:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.127 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Feb 2026 15:50:19 +0000
Message-Id: <20260219155019.release-6.6.127@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.127
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.127.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.127.xz

Linux kernel version 6.6.127 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.127.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.127.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.127.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.127/v6.6.126

