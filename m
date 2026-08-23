Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC581C5799
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787489193; cv=none; b=GSpl3ghkurRASIpJcrOS89OW/YNHLIUIriisVUdRd/I4KXslu4lLgpWA+6+waakDI19mSE1NN8y+pVMYHTMi7uipBMgGmC6xara6JYZCNcdy9BX3dJXrKh68D00ne0DtEz4GC4yPbrNwk4KUVJtulS+SjcstPSj3/HyDGW4AwGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787489193; c=relaxed/simple;
	bh=RfpLiFrffCsq4Ozx1CI1rq+N09gGQQ+6NCBuEvE4yiA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=l/nbUwB0Id06660pqqru1dYW9/pCPmjLn6+n5ds6cKKQVBT6uARxnfLqg+RlePpfKeRHd9WlcIqmcRzEcenULZosgDcDY1Dg+XlW8sflByr9t9SuXqWbtnT/LmACR0CoVL1BAiVs8vUQTOXUer52U2h14b0SuPcK6Sx0V/WBZNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787489192;
	bh=RfpLiFrffCsq4Ozx1CI1rq+N09gGQQ+6NCBuEvE4yiA=;
	h=Subject:From:To:Date:From;
	b=rzxC73ervShHzeDDtwirwqLk8+s/nrrEAbxSIOskoWcwneN+ykvwxMZO+7MHj4fcb
	 Vtu2QQp0aG4lkyRMOMn5sG1SRy+V1t9YZQpQqMqJm9ow7sfjAPCowIet5lJsW6SBQX
	 yfInrI6FNtDxZwDBnoPRE92cLEAYaFHz5TZELqkU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5042A1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:46:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D35F0380CFE6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:45:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.105 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Aug 2026 12:45:39 +0000
Message-Id: <20260823124539.release-6.12.105@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.105
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.105.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.105.xz

Linux kernel version 6.12.105 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.105.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.105.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.105.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.105/v6.12.104

