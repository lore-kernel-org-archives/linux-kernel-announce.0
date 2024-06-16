Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B61335D3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718537740; cv=none; b=J9xr+aLLcRO+O0gS5ARARpSmfewPEdsgqYolkqUC2VMafS+pnylnjXMfaBhjgu4jxp77hgcLa1BzS5xuw08oVE12MmMgd6+ooIQjrRQrc3Kquyi1u7K/N8pvovJk5pzk5pTZfzro9A4J/1nd7OSGfMeIjFM/QB2KKenfXyT7A+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718537740; c=relaxed/simple;
	bh=ZCDtV1gKZrURfsEPm3U8a4zgVxmbmufRVUT9nhI9Wp4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qovKBL/bPJX6UfUaUtaIg9iQ8TiFVTuIth1ZS3zZGJkorjzrneB0xaMEZyNmt3jEuC2Se47yK+91Gp+gi8+sYLOs5flyPAJs9m2GPsrdIbtitYftAxfTTpVwVbwEJdlsFuVPguGbiaUZkkEvZOTkHSgukm5s6EmpCapgg8IpBFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718537740;
	bh=ZCDtV1gKZrURfsEPm3U8a4zgVxmbmufRVUT9nhI9Wp4=;
	h=Subject:From:To:Date:From;
	b=ZRGCAPXpbR9ur1git7lSgPdlEez46lGBfO4F6C+ZaltnCQull1amUCVJhLHCwpwT3
	 7EWwszYo2OsyeXlPhp8W/H1UkJITxPfGOSg19Bpy03sKx5pvos/0iVi94nDJ80CLPp
	 TLjPfeqsug5+P/4OXectmvL49UzkUYNfJ5vVJhB0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90972C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:35:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 818B7C43616
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:35:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.316 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 11:35:39 +0000
Message-Id: <20240616113539.release-4.19.316@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.316
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.316.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.316.xz

Linux kernel version 4.19.316 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.316.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.316.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.316.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.316/v4.19.315

